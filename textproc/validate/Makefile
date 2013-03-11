# $OpenBSD: Makefile,v 1.10 2013/03/11 11:42:47 espie Exp $

COMMENT=		HTML, XHTML validator

DISTNAME=		validate-1.2.2
REVISION=		0
CATEGORIES=		textproc

HOMEPAGE=		http://www.htmlhelp.com/tools/validator/offline/
MAINTAINER=		Gerardo Santana Gomez Garrido <gerardo.santana@gmail.com>

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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/validate ${PREFIX}/bin/
	perl -pi -e 's:%%LOCALBASE%%:${LOCALBASE}:g' ${PREFIX}/bin/validate

.include <bsd.port.mk>
