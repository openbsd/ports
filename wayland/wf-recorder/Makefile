COMMENT =	Utility program for screen recording of wayland compositors

V =		0.5.0

GH_ACCOUNT = ammen99
GH_PROJECT = wf-recorder
GH_TAGNAME = v${V}

CATEGORIES =	wayland

MAINTAINER =	Tobias Heider <tobhe@openbsd.org>
# MIT
PERMIT_PACKAGE = Yes

COMPILER =	base-clang ports-gcc

MODULES =	devel/meson

LIB_DEPENDS = graphics/ffmpeg wayland/wayland

WANTLIB += ${COMPILER_LIBCXX} avcodec avdevice avfilter avformat
WANTLIB += avutil c drm gbm wayland-client

.include <bsd.port.mk>
