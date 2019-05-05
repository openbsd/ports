# $OpenBSD: Makefile,v 1.12 2019/05/05 15:15:45 danj Exp $

COMMENT=		HTML, XHTML validator

DISTNAME=		validate-1.2.2
REVISION=		1
CATEGORIES=		textproc

HOMEPAGE=		http://www.htmlhelp.com/tools/validator/offline/

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=
EXTRACT_CASES=		*) cp ${FULLDISTDIR}/$$archive ${WRKDIST}/validate ;;

RUN_DEPENDS=		textproc/lq-sp \
			textproc/wdg-sgml-lib

WRKDIST=		${WRKDIR}
NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

pre-configure:
	${SUBST_CMD} ${WRKSRC}/validate

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/validate ${PREFIX}/bin/

.include <bsd.port.mk>
