# $OpenBSD: Makefile,v 1.54 2009/08/16 13:31:27 rui Exp $

SHARED_ONLY = 		Yes

COMMENT =		highly flexible sniffer/NIDS

DISTNAME = 		snort-2.8.4.1
CATEGORIES =		net security
MASTER_SITES = 		http://dl.snort.org/snort-current/

HOMEPAGE =		http://www.snort.org/

MAINTAINER =		Markus Lude <markus.lude@gmx.de>

# GPLv2
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP =   	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = 	Yes
WANTLIB =		c m pcap

SHARED_LIBS = 		sf_engine 3.0 \
			sf_dce2_preproc 0.0 \
			sf_dcerpc_preproc 2.0 \
			sf_dns_preproc 3.0 \
			sf_ftptelnet_preproc 3.0 \
			sf_smtp_preproc 3.0 \
			sf_ssh_preproc 2.0 \
			sf_ssl_preproc 1.0 \
			_sfdynamic_example_rule 0.0 \
			_sfdynamic_preprocessor_example 0.0

USE_LIBTOOL =		Yes

SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--enable-dynamicplugin

MAKE_FLAGS =		mandir=${TRUEPREFIX}/man

LIB_DEPENDS =		pcre::devel/pcre

# gcc 3.3.5, Bus errors
.if ${MACHINE_ARCH} == "sparc64"
CFLAGS +=		-O0
.endif

FLAVORS =		postgresql mysql flexresp prelude
FLAVOR ?=	

.if ${FLAVOR:L:Mflexresp}
LIB_DEPENDS +=		dnet.=1::net/libdnet
CONFIGURE_ARGS +=	--enable-flexresp2
.endif

.if ${FLAVOR:L:Mpostgresql}
LIB_DEPENDS +=		pq.>=2::databases/postgresql
CONFIGURE_ARGS +=	--with-postgresql="${LOCALBASE}"
.endif

.if ${FLAVOR:L:Mmysql}
LIB_DEPENDS +=		lib/mysql/mysqlclient.>=10::databases/mysql
CONFIGURE_ARGS +=	--with-mysql-libraries="${LOCALBASE}/lib" \
			--with-mysql-includes="${LOCALBASE}/include"
WANTLIB +=		z
.endif

.if ${FLAVOR:L:Mprelude}
MODULES =		devel/gettext
WANTLIB +=		gcrypt gnutls gpg-error pthread tasn1 z
LIB_DEPENDS +=		prelude.>=8::security/prelude/libprelude
CONFIGURE_ARGS +=	--enable-prelude
MESSAGE =		${PKGDIR}/MESSAGE-prelude
.endif

CONFIGS	=		classification.config gen-msg.map reference.config \
			sid-msg.map snort.conf threshold.conf unicode.map

PREPROC =		decoder.rules preprocessor.rules

DOCS =			AUTHORS CREDITS README README.* *.pdf TODO USAGE \
			WISHLIST

SCHEMAS = 		create_db2 create_mssql create_mysql \
			create_oracle.sql create_postgresql

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/etc/snort.conf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/snort
.for i in ${CONFIGS}
	${INSTALL_DATA} ${WRKSRC}/etc/${i} ${PREFIX}/share/examples/snort
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/generators ${PREFIX}/share/examples/snort

.for i in ${PREPROC}
	${INSTALL_DATA} ${WRKSRC}/preproc_rules/${i} ${PREFIX}/share/examples/snort
.endfor

	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/snort
.for i in ${DOCS}
	${INSTALL_DATA} ${WRKSRC}/doc/${i} ${PREFIX}/share/doc/snort
.endfor
.for i in ${SCHEMAS}
	${INSTALL_DATA} ${WRKSRC}/schemas/${i} ${PREFIX}/share/doc/snort
.endfor

NO_REGRESS =		Yes

.include <bsd.port.mk>
