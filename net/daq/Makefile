# $OpenBSD: Makefile,v 1.1.1.1 2012/09/26 01:40:32 lteo Exp $

COMMENT =	data acquisition library for snort

# Original URL http://www.snort.org/downloads/1850 redirects to a
# time-limited Amazon S3 url. This would mean a bad distfile name.
# The following hack allows it to work but XXX if updating, the
# MASTER_SITES URL will need to be adjusted, not just DISTNAME.
DISTNAME = 	daq-1.1.1
MASTER_SITES = 	http://www.snort.org/downloads/1850?/

CATEGORIES =	net

HOMEPAGE =	http://www.snort.org/

MAINTAINER =	Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM = 		Yes
PERMIT_PACKAGE_FTP =   		Yes
PERMIT_DISTFILES_CDROM = 	Yes
PERMIT_DISTFILES_FTP = 		Yes

SHARED_LIBS += 		daq		0.0 # 1.0
SHARED_LIBS += 		sfbpf		0.0 # 0.1

WANTLIB =		pcap

USE_LIBTOOL =		Yes

SEPARATE_BUILD = 	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-ipv6

BUILD_DEPENDS =		devel/bison

.include <bsd.port.mk>
