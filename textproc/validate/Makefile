# $OpenBSD: Makefile,v 1.1.1.1 2003/02/03 16:41:33 naddy Exp $

COMMENT=		"HTML, XHTML validator"

DISTNAME=		validate-1.1.2
CATEGORIES=		textproc

HOMEPAGE=		http://www.htmlhelp.com/tools/validator/offline/
MAINTAINER=		Gerardo Santana Gomez Garrido <santana@openbsd.org.mx>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=
EXTRACT_CASES=		*) cp ${FULLDISTDIR}/$$archive ${WRKDIST}/validate ;;

RUN_DEPENDS=		::textproc/lq-sp \
			::textproc/wdg-sgml-lib

WRKDIST=		${WRKDIR}
NO_BUILD=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/validate ${PREFIX}/bin/
	perl -pi -e 's:%%LOCALBASE%%:${LOCALBASE}:g' ${PREFIX}/bin/validate

.include <bsd.port.mk>
