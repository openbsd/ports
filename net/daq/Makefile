# $OpenBSD: Makefile,v 1.2 2012/09/28 19:30:55 sthen Exp $

COMMENT =	data acquisition library for snort

DISTNAME =	daq-1.1.1

SHARED_LIBS +=		daq		0.0 # 1.0
SHARED_LIBS +=		sfbpf		0.0 # 0.1

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB =		pcap

MASTER_SITES =		http://www.snort.org/dl/snort-current/

USE_LIBTOOL =		Yes

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6

BUILD_DEPENDS =		devel/bison

.include <bsd.port.mk>
