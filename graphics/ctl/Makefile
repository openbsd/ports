# $OpenBSD: Makefile,v 1.7 2013/03/21 08:45:18 ajacoutot Exp $

COMMENT =		Color Transformation Language interpreter

DISTNAME =		ctl-1.4.1
REVISION =		0

SHARED_LIBS +=  IlmCtl               0.0      # .2.0
SHARED_LIBS +=  IlmCtlMath           0.0      # .2.0
SHARED_LIBS +=  IlmCtlSimd           0.0      # .2.0

CATEGORIES =		graphics lang
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m stdc++ Half Iex IlmThread Imath pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		graphics/ilmbase

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
