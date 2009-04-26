# $OpenBSD: Makefile,v 1.7 2009/04/26 11:01:05 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	Linux HA cluster suite
COMMENT-gui=	GUI management tool for heartbeat
COMMENT-snmp=	snmp agent for heartbeat

VERSION=	2.1.2-15
DISTNAME=	obs-${VERSION}
PKGNAME=	heartbeat-${VERSION}
PKGNAME-main=	heartbeat-${VERSION}p1
PKGNAME-gui=	heartbeat-gui-${VERSION}p0
PKGNAME-snmp=	heartbeat-snmp-${VERSION}

EXTRACT_SUFX=   .tar.bz2
CATEGORIES=     sysutils

SO_VERSION=	0.0
.for _lib in apphb ccmclient cib clm crmcommon hbclient hbmgmtclient \
        hbmgmtcommon hbmgmt hbmgmttls lrm pe_rules pe_status pengine \
	pils plumb plumbgpl recoverymgr stonith stonithd transitioner
SHARED_LIBS+=	${_lib} ${SO_VERSION}
.endfor

HOMEPAGE=	http://www.linux-ha.org
MASTER_SITES=	http://openbsd.dead-parrot.de/distfiles/
MAINTAINER=     Sebastian Reitenbach <sebastia@l00-bugdead-prods.de>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c m pcre util z

MULTI_PACKAGES=	-main -gui -snmp

MODULES=	devel/gettext lang/python
MODPY_RUNDEP=	No

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		::devel/swig

WANTLIB-main=	${WANTLIB} crypto gcrypt gpg-error idn ncurses ssl tasn1
LIB_DEPENDS-main=${LIB_DEPENDS} \
		uuid.>=1:e2fs-uuid-*:sysutils/e2fsprogs,-uuid \
		gnutls.>=12::security/gnutls \
		lib/libnet-1.0/net.=0:libnet->=1.0,<1.1:net/libnet/1.0 \
		bz2.>=10::archivers/bzip2 \
		xml2.>=9::textproc/libxml \
		ltdl.>=4::devel/libtool,-ltdl \
		glib-2.0.>=1400::devel/glib2 \
		curl.>=7::net/curl
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		::devel/p5-Time-TimeDate

WANTLIB-gui=	gcrypt gpg-error m tasn1 util xml2 z
LIB_DEPENDS-gui=${LIB_DEPENDS} \
		bz2.>=10::archivers/bzip2 \
		gnutls.>=12::security/gnutls \
		ltdl.>=4::devel/libtool,-ltdl \
		uuid.>=1:e2fs-uuid-*:sysutils/e2fsprogs,-uuid
RUN_DEPENDS-gui=${MODPY_RUN_DEPENDS} \
		::x11/py-gtk2

WANTLIB-snmp=	${WANTLIB} bz2 crypto glib-2.0 kvm ltdl perl uuid wrap xml2
LIB_DEPENDS-snmp=${LIB_DEPENDS} \
		ccmclient,clm,hbclient,pils,plumb::${BASE_PKGPATH} \
		netsnmp.>=7,netsnmpagent,netsnmphelpers,netsnmpmibs::net/net-snmp

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9

WRKDIST=	${WRKDIR}/Heartbeat-Dev-c492f19cb583

HBUSER=		_heartbeat
HBUID=		596
HBGROUP=	_heartbeat
HBGID=		596
SUBST_VARS=	HBUSER HBGROUP HBUID HBGID

CONFIGURE_SCRIPT=ConfigureMe
CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBNETCONFIG=${LOCALBASE}/bin/libnet-config-1.0 \
		LDFLAGS="-liconv -L${LOCALBASE}/lib/libnet-1.0" \
		docdir=${PREFIX}/share/doc/heartbeat \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}
CONFIGURE_ARGS=	configure --prefix=${PREFIX} \
		--sysconfdir=${SYSCONFDIR} \
		--localstatedir=/var \
		--with-initdir=${SYSCONFDIR}/ha.d/init.d \
		--with-group-id=${HBGID} \
                --with-ccmuser-id=${HBUID} \
		--with-group-name=${HBGROUP} \
                --with-ccmuser-name=${HBUSER} \
		--with-ocf-root=${PREFIX}/lib/ocf/ \
		--disable-rpath \
		--enable-quorumd \
		--enable-mgmt \
		--enable-snmp \
		--enable-snmp-subagent \
		--enable-fatal-warnings=no \
		--enable-static=no

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/heartbeat \
		initddir=${PREFIX}/share/examples/heartbeat/ha.d/init.d

pre-configure:
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/configure.in \
		${WRKSRC}/resources/OCF/pgsql \
		${WRKSRC}/resources/OCF/mysql
	@find ${WRKSRC} -name *.py* -exec \
		perl -pi -e 's,/bin/env python,${MODPY_BIN},g' {} \;

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/{Telephony,apache13,openvpn} \
		${PREFIX}/lib/ocf/resource.d/heartbeat
	${INSTALL_DATA} ${WRKSRC}/crm/cib-example-1.xml \
		${PREFIX}/share/examples/heartbeat/cib.xml
	@perl -pi -e 's,!!LOCALBASE!!,${LOCALBASE},g;' \
		-e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${PREFIX}/lib/ocf/resource.d/heartbeat/openvpn \
		${PREFIX}/lib/ocf/resource.d/heartbeat/Telephony

.include <bsd.port.mk>
