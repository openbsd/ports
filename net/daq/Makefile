# $OpenBSD: Makefile,v 1.13 2016/03/11 20:28:28 naddy Exp $

COMMENT =	data acquisition library for snort

DISTNAME =	daq-2.0.5

SHARED_LIBS +=		daq		2.1 # 2.4
SHARED_LIBS +=		sfbpf		1.0 # 0.1

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB =		pcap

MASTER_SITES =		https://www.snort.org/downloads/snort/


SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--enable-ipv6

BUILD_DEPENDS =		devel/bison

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/daq
	${INSTALL_DATA} ${WRKSRC}/{ChangeLog,README} ${PREFIX}/share/doc/daq

.include <bsd.port.mk>
