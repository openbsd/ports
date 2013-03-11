# $OpenBSD: Makefile,v 1.6 2013/03/11 11:20:28 espie Exp $

COMMENT=	general purpose multi-paradigm programming language

DISTNAME=	scala-2.9.1.final
PKGNAME=	${DISTNAME:S/.final//}
CATEGORIES=	lang

HOMEPAGE=	http://www.scala-lang.org/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${HOMEPAGE}/downloads/distrib/files/
EXTRACT_SUFX=	.tgz

MODULES=	java
MODJAVA_VER=	1.6+

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	scala scalac scalap scaladoc

NO_BUILD=	Yes
NO_TEST=	Yes

# Cleanup a bit, remove BAT files, and fix path to bash.
post-extract:
	rm ${WRKSRC}/bin/*.bat
	perl -pi -e 's,/bin/bash,${LOCALBASE}$$&,g' ${WRKSRC}/bin/*

do-install:
	${INSTALL_DATA_DIR} ${SCALA_HOME}
	cd ${WRKSRC} && tar -cf - bin doc lib meta misc src | \
		tar -xf - -C ${SCALA_HOME}
	${INSTALL_MAN} ${WRKSRC}/man/man1/*.1 ${PREFIX}/man/man1/
	# Install emacs files to where emacs can find them
	${INSTALL_DATA_DIR} ${PREFIX}/share/emacs/site-lisp/
	cd ${WRKSRC}/misc/scala-tool-support/ && tar -cf - emacs | \
		tar -xf - -C ${PREFIX}/share/emacs/site-lisp/
	rm -fr ${PREFIX}/scala/misc/scala-tool-support/emacs/
	# Install the wrapper scripts
.for s in ${SCALA_SCRIPTS}
	${INSTALL_SCRIPT} ${FILESDIR}/$s ${PREFIX}/bin/
	${SUBST_CMD} ${PREFIX}/bin/$s
	rm ${PREFIX}/bin/$s.beforesubst
.endfor

.include <bsd.port.mk>
