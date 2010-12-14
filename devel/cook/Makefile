# $OpenBSD: Makefile,v 1.18 2010/12/14 11:04:32 espie Exp $
# $FreeBSD: Makefile,v 1.5 2000/05/30 23:19:09 jasone Exp $

COMMENT=	like make(1), but more powerful and clean

DISTNAME=	cook-2.21
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=       http://www.canb.auug.org.au/~millerp/cook/

MODULES=	devel/gettext

MAINTAINER=	Gregory Steuck <greg@nest.cx>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

DESTDIRNAME=RPM_BUILD_ROOT

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS= --libdir="${PREFIX}/share/locale"
USE_GROFF =	Yes

REGRESS_TARGET=	sure
REGRESS_FLAGS=	HOME=/ LOGNAME=nobody

.include <bsd.port.mk>
