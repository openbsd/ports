# $OpenBSD: Makefile,v 1.25 2002/08/17 19:41:02 brad Exp $

COMMENT=	"GNU Standards-compliant Makefile generator"

DISTNAME=	automake-1.4-p6
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_GNU:=automake/}

HOMEPAGE=	http://www.gnu.org/software/automake/

MAINTAINER=	Jason Ish <jasoni@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
MAKE_FLAGS=	MAKEINFO="makeinfo --no-split"
FAKE_FLAGS=	${MAKE_FLAGS} ${DESTDIRNAME}="${WRKINST}"

REGRESS_DEPENDS=:gmake-*:devel/gmake

do-regress:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} MAKE=gmake gmake -f \
	    ${MAKE_FILE} ${REGRESS_FLAGS} ${REGRESS_TARGET}

.include <bsd.port.mk>
