#-*- mode: Fundamental; tab-width: 4; -*-
# ex:ts=4 sw=4 filetype=make:
# $OpenBSD: imake.port.mk,v 1.10 2018/08/09 17:43:00 espie Exp $
#	Based on bsd.port.mk, originally by Jordan K. Hubbard.
#	This file is in the public domain.

.if empty(CONFIGURE_STYLE:L:Mnoman)
INSTALL_TARGET +=	install.man
.endif

XMKMF ?=		xmkmf -a
XMKMF +=		-DPorts

.if ${USE_GROFF:L} == "yes"
XMKMF +=		-DUseGroff
.endif

.if !exists(${X11BASE})
IGNORE =	"uses imake, but ${X11BASE} not found"
.endif

MODIMAKE_DEPENDS = \
				 devel/imake \
				 devel/imake-cf

BUILD_DEPENDS += ${MODIMAKE_DEPENDS}

MODIMAKE_configure = \
		cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${XMKMF};
