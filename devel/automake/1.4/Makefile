# $OpenBSD: Makefile,v 1.2 2005/01/26 16:41:03 naddy Exp $

COMMENT=	"GNU Standards-compliant Makefile generator"

VERSION=	1.4
DISTNAME=	automake-${VERSION}-p6
PKGNAME=	${DISTNAME}p2
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
	    ${MAKE_FILE} ${REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
