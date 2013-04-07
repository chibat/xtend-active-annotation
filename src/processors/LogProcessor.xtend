package processors

import org.eclipse.xtend.lib.macro.AbstractClassProcessor
import org.eclipse.xtend.lib.macro.TransformationContext
import org.eclipse.xtend.lib.macro.declaration.MutableClassDeclaration
import java.util.logging.Logger

class LogProcessor extends AbstractClassProcessor{

    override doTransform(MutableClassDeclaration annotatedClass, extension TransformationContext context) {
        val name = annotatedClass.simpleName;
        annotatedClass.addField("log") [
            type = typeof(Logger).newTypeReference()
            initializer = ['''Logger.getLogger("«name»")''']
            final = true
            static = true
        ];
    }
}