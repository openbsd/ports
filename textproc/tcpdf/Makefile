COMMENT=	PHP class for generating PDF documents

GH_ACCOUNT=	tecnickcom
GH_PROJECT=	TCPDF
GH_TAGNAME=	6.4.4
REVISION=	0

PKGNAME=	${DISTNAME:L}

CATEGORIES=	textproc

HOMEPAGE=	https://tcpdf.org/

# LGPLv3+
PERMIT_PACKAGE=	Yes

MODULES=	lang/php
MODPHP_BUILDDEP=No

NO_BUILD=	Yes
NO_TEST=	Yes

PREFIX=		${VARBASE}/www
INSTDIR=	${PREFIX}/tcpdf

do-install:
	cd ${WRKDIST} && \
		find . -type d \
			-exec ${INSTALL_DATA_DIR} ${INSTDIR}/{} \; && \
		find . ! -type d \
			-exec ${INSTALL_DATA} -m 644 {} ${INSTDIR}/{} \;

.include <bsd.port.mk>
