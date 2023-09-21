COMMENT =	makefile generator
CATEGORIES =	devel x11
DISTNAME =	imake-1.0.9
SITES =		${SITE_XORG:=util/}

PERMIT_PACKAGE =	Yes

WANTLIB =	c

BUILD_DEPENDS =	devel/tradcpp

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	RAWCPP=${TRUEPREFIX}/bin/tradcpp
CONFIGURE_ARGS = --with-script-preproc-cmd="cc -E"

SUBST_FILES =	${WRKSRC}/imakemdep.h

RUN_DEPENDS =	devel/imake-cf \
		devel/tradcpp

pre-configure:
	${SUBST_CMD} ${SUBST_FILES}

.include <bsd.port.mk>
