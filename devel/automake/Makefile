# $OpenBSD: Makefile,v 1.24 2002/05/13 10:54:45 fgsch Exp $

COMMENT=	"GNU Standards-compliant Makefile generator"

DISTNAME=	automake-1.4-p5
CATEGORIES=	devel
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
REGRESS_DEPENDS=:gmake-*:devel/gmake

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=gmake gmake -f \
	    ${MAKE_FILE} ${REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
