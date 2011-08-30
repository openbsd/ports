# $OpenBSD: Makefile,v 1.3 2011/08/30 17:16:36 jasper Exp $

COMMENT=	general purpose multi-paradigm programming language

DISTNAME=	scala-2.9.0.1
REVISION=	1
CATEGORIES=	lang

HOMEPAGE=	http://www.scala-lang.org/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${HOMEPAGE}/downloads/distrib/files/
EXTRACT_SUFX=	.tgz

MODULES=	java
MODJAVA_VER=	1.6+

RUN_DEPENDS=	java/javaPathHelper \
		shells/bash

SCALA_HOME=	${PREFIX}/scala/
SCALA_SCRIPTS=	scala scalac scalap scaladoc

NO_BUILD=	Yes
NO_REGRESS=	Yes

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
