# $OpenBSD: Makefile,v 1.6 2020/11/11 02:45:18 jeremy Exp $

COMMENT=		ruby graphical tooklit using Tk

DISTNAME=		tk-0.3.0
CATEGORIES=		x11

HOMEPAGE=		https://github.com/ruby/tk

MAINTAINER=		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

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
