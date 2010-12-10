# $OpenBSD: Makefile,v 1.1.1.1 2010/12/10 20:45:53 shadchin Exp $

COMMENT =		cue sheet parser library

DISTNAME =		libcue-1.4.0
CATEGORIES =		audio

HOMEPAGE =		http://libcue.sourceforge.net/

SHARED_LIBS =		cue		0.0	# 1.4

MAINTAINER=		Alexandr Shadchin <shadchin@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libcue/}
EXTRACT_SUFX =		.tar.bz2

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
