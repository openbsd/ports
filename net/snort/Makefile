# $OpenBSD: Makefile,v 1.48 2006/10/10 13:33:17 aanriot Exp $

COMMENT=	"highly flexible sniffer/NIDS"

DISTNAME=	snort-2.6.0.2
CATEGORIES=	net security
MASTER_SITES=	${HOMEPAGE}/dl/current/

HOMEPAGE=       http://www.snort.org/

# GPL
PERMIT_PACKAGE_CDROM= 	Yes
PERMIT_PACKAGE_FTP=   	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP= 	Yes
WANTLIB=		c m pcap 

SHARED_LIBS=	sf_engine 0.0 \
		sf_dns_preproc 0.0 \
		sf_ftptelnet_preproc 0.0 \
		sf_smtp_preproc 0.0

USE_LIBTOOL=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-dynamicplugin

LIB_DEPENDS=	pcre::devel/pcre

# gcc 3.3.5, Bus errors
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS+=	-O0
.endif

FLAVORS=	postgresql mysql flexresp prelude
FLAVOR?=	

.if ${FLAVOR:L:Mflexresp}
LIB_DEPENDS+=	dnet.=1::net/libdnet
CONFIGURE_ARGS+=--enable-flexresp2
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS+=	pq.>=2::databases/postgresql
CONFIGURE_ARGS+=--with-postgresql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS+=	lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS+=--with-mysql="${LOCALBASE}"
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

DOCS=		AUTHORS CREDITS README.* *.pdf

post-build:
	@perl -pi -e "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKSRC}/etc/snort.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
.for i in ${CONFIGS}
	${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/share/examples/snort
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snort
.for j in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${j} ${PREFIX}/share/doc/snort
.endfor

.include <bsd.port.mk>
