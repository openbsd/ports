# $OpenBSD: Makefile,v 1.1.1.1 2009/11/12 12:32:23 jasper Exp $

COMMENT =		OpenEXR bindings for CTL
DISTNAME =		openexr_ctl-1.0.1

PKGNAME =		${DISTNAME:S/_/-/}

SHARED_LIBS +=  IlmImfCtl            0.0      # .2.0

CATEGORIES =		graphics
HOMEPAGE =		http://www.oscars.org/science-technology/council/projects/ctl.html

# 3-clause BSD license
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += Half Iex IlmThread Imath c m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=ampasctl/}

LIB_DEPENDS =		IlmImf::graphics/openexr \
			IlmCtl,IlmCtlMath,IlmCtlSimd::graphics/ctl

SEPARATE_BUILD =	concurrent

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
