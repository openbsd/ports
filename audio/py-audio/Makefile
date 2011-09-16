# $OpenBSD: Makefile,v 1.2 2011/09/16 08:26:10 espie Exp $

COMMENT =	Python bindings for PortAudio

MODPY_EGG_VERSION =	0.2.4
DISTNAME =	pyaudio-${MODPY_EGG_VERSION}
PKGNAME =	${DISTNAME:S/py/py-/}
CATEGORIES =	audio devel
REVISION =	0

HOMEPAGE =	http://people.csail.mit.edu/hubert/pyaudio/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}packages/

WANTLIB =	portaudio ${MODPY_WANTLIB}

MODULES =	lang/python

LIB_DEPENDS =	audio/portaudio-svn

WRKDIST =	${WRKDIR}/PyAudio-${MODPY_EGG_VERSION}

.include <bsd.port.mk>
