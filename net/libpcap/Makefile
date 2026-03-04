COMMENT=	packet capture library

DISTNAME=	libpcap-1.10.6
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS=	pcap 0.0

CATEGORIES=	net

HOMEPAGE=	https://www.tcpdump.org/
SITES=		https://www.tcpdump.org/release/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	devel/cmake
MODCMAKE_LDFLAGS= -Wl,-rpath,${TRUEPREFIX}/lib/libpcap
CONFIGURE_ARGS=	-DDISABLE_DBUS=On \
		-DCMAKE_INSTALL_INCLUDEDIR=include/libpcap \
		-DCMAKE_INSTALL_LIBDIR=lib/libpcap

NO_TEST=	Yes

post-install:
	for i in 1 5 7; do cd ${PREFIX}/man/man$$i; \
	  for f in *; do mv $$f e$$f; done; \
	done
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libpcap/man
	mv ${PREFIX}/man/man3 ${PREFIX}/lib/libpcap/man/

.include <bsd.port.mk>
