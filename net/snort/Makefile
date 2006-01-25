# $OpenBSD: Makefile,v 1.41 2006/01/25 04:14:39 david Exp $

COMMENT=	"highly flexible sniffer/NIDS"

DISTNAME=	snort-2.3.3
PKGNAME=	${DISTNAME}p2
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}/dl/current/

HOMEPAGE=       http://www.snort.org/

# License: GPL
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes
WANTLIB=		c m pcap 

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

LIB_DEPENDS=     pcre::devel/pcre

# gcc 3.3.5, Bus errors
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-O0
.endif

FLAVORS=	postgresql mysql flexresp
FLAVOR?=	

.if ${FLAVOR:L:Mflexresp}
LIB_DEPENDS+=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --enable-flexresp \
		--with-libnet-includes=${LOCALBASE}/include/libnet-1.0 \
		--with-libnet-libraries=${LOCALBASE}/lib/libnet-1.0
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pq.2::databases/postgresql
CONFIGURE_ARGS+= --with-postgresql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.10::databases/mysql
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
WANTLIB+=	z
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/snort.conf ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/threshold.conf ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/unicode.map ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/sid-msg.map ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/classification.config \
		 ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/etc/reference.config \
		 ${PREFIX}/share/examples/snort
	${INSTALL_DATA} ${WRKSRC}/rules/*.rules ${PREFIX}/share/examples/snort

.include <bsd.port.mk>
