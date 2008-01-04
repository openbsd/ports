# $OpenBSD: Makefile,v 1.6 2008/01/04 18:38:51 espie Exp $

COMMENT=	GNU Standards-compliant Makefile generator

VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	automake-1.4.6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

MAINTAINER=	Jason Ish <ish@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=gnu

REGRESS_DEPENDS=:gmake-*:devel/gmake

SUFFIX=		-${VERSION}
SUBST_VARS=	SUFFIX

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=gmake gmake -f \
	    ${MAKE_FILE} ${ALL_REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
