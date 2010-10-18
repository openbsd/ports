# $OpenBSD: Makefile,v 1.3 2010/10/18 16:52:45 espie Exp $

COMMENT =		cut and cat MP3 files

MODULES =		cpan
# strip -p5 from PKGNAME (added by the cpan MODULE)
DISTNAME =		mp3cut-1.13
PKGNAME =		${DISTNAME}
CATEGORIES =		audio

MAINTAINER =		Girish Venkatachalam <girish1729@gmail.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

CPAN_AUTHOR =		JV

RUN_DEPENDS =		::audio/p5-CDDB-File \
			::audio/p5-MPEG-Audio-Frame
BUILD_DEPENDS =		${RUN_DEPENDS}

USE_GROFF =	Yes
.include <bsd.port.mk>
