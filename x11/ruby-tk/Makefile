# $OpenBSD: Makefile,v 1.4 2018/10/26 16:13:18 jeremy Exp $

COMMENT=		ruby graphical tooklit using Tk

DISTNAME=		tk-0.2.0
REVISION =		0
CATEGORIES=		x11

HOMEPAGE=		https://github.com/ruby/tk

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem ext

MODRUBY_TEST=	rake

CONFIGURE_ARGS =	--with-tcl-include=${LOCALBASE}/include/tcl8.5 \
			--with-tk-include=${LOCALBASE}/include/tk8.5 \
			--with-tcllib=tcl85 \
			--with-tklib=tk85 \
			--with-X11-dir=${X11BASE}
WANTLIB =		X11 tcl85 tk85
LIB_DEPENDS =		tk->=8.5,<8.6:x11/tk/8.5

.include <bsd.port.mk>
