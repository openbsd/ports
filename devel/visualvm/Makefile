COMMENT=	visual tool integrating commandline JDK tools and profiling

V=		2.1.9
DISTNAME=	visualvm_${V:S/.//g}
PKGNAME=	visualvm-${V}

CATEGORIES=	devel

HOMEPAGE=	https://visualvm.github.io/

MAINTAINER=	Kirill A. Korinsky <kirill@korins.ky>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/oracle/visualvm/releases/download/${V}/
EXTRACT_SUFX=	.zip

MODULES=	java
MODJAVA_VER=	1.8+
RUN_DEPENDS=	java/javaPathHelper
RUN_DEPENDS+=	devel/desktop-file-utils

NO_BUILD=	Yes
NO_TEST=	Yes

do-install:
	${SUBST_CMD} ${WRKSRC}/bin/visualvm
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/visualvm
	cd ${WRKDIST} && \
		tar -cf - bin etc platform visualvm \
			`find * -prune -type f` | \
		tar -C ${PREFIX}/libexec/visualvm -xf -
	${SUBST_PROGRAM} ${FILESDIR}/visualvm ${PREFIX}/bin/visualvm
	find ${WRKINST} \( \
		-name \*.bat -o -name \*.exe -o -name \*.dll \
		-o -name \*${PATCHORIG} -o -name \*.beforesubst \
		\) -delete
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${FILESDIR}/visualvm.desktop \
        ${PREFIX}/share/applications/

.include <bsd.port.mk>
