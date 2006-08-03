# $OpenBSD: Makefile,v 1.47 2006/08/03 23:15:58 espie Exp $

COMMENT=	"highly flexible sniffer/NIDS"

DISTNAME=	snort-2.4.5
PKGNAME=	${DISTNAME}p0
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

FLAVORS=	postgresql mysql flexresp prelude
FLAVOR?=	

.if ${FLAVOR:L:Mflexresp}
LIB_DEPENDS+=	lib/libnet-1.0/net.=0:libnet-1.0*:net/libnet/1.0
CONFIGURE_ENV+=	LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+= --enable-flexresp \
		--with-libnet-includes=${LOCALBASE}/include/libnet-1.0 \
		--with-libnet-libraries=${LOCALBASE}/lib/libnet-1.0
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pq.>=2::databases/postgresql
CONFIGURE_ARGS+= --with-postgresql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS+= --with-mysql="${LOCALBASE}"
WANTLIB+=	z
.endif

.if ${FLAVOR:L:Mprelude}
MODULES=	devel/gettext
WANTLIB+=	gcrypt gpg-error pthread z
LIB_DEPENDS+=	prelude.>=8::security/prelude/libprelude
CONFIGURE_ARGS+=--enable-prelude
MESSAGE=	${PKGDIR}/MESSAGE-prelude
.endif

CONFIGS=	classification.config gen-msg.map generators reference.config \
		sid sid-msg.map snort.conf threshold.conf unicode.map

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
.for i in ${CONFIGS}
	${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/share/examples/snort
.endfor

.include <bsd.port.mk>
