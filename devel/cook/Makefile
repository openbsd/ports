# $OpenBSD: Makefile,v 1.10 2001/10/25 01:58:55 brad Exp $
# $FreeBSD: Makefile,v 1.5 2000/05/30 23:19:09 jasone Exp $

COMMENT=	"like make(1), but more powerful and clean"

DISTNAME=	cook-2.17
CATEGORIES=	devel
NEED_VERSION=	1.474
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=       http://www.canb.auug.org.au/~millerp/cook/

MODULES=	gettext

MAINTAINER=	Gregory Steuck <greg@nest.cx>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE_FLAGS=	RPM_BUILD_ROOT="${WRKINST}"

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --libdir="${PREFIX}/share/locale"

REGRESS_TARGET=	sure
REGRESS_FLAGS=HOME=/ LOGNAME=nobody

.include <bsd.port.mk>
