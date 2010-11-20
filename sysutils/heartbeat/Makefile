# $OpenBSD: Makefile,v 1.19 2010/11/20 17:22:41 espie Exp $

SHARED_ONLY=	Yes

COMMENT-main=	Linux HA cluster suite
COMMENT-gui=	GUI management tool for heartbeat
COMMENT-snmp=	snmp agent for heartbeat

DISTNAME=	obs-2.1.2-15
VERSION=	2.1.2.15
PKGNAME=	heartbeat-${VERSION}
PKGNAME-main=	heartbeat-${VERSION}
REVISION-main =	4
PKGNAME-gui=	heartbeat-gui-${VERSION}
REVISION-gui =	2
PKGNAME-snmp=	heartbeat-snmp-${VERSION}
REVISION-snmp =	3

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
MAINTAINER=     Sebastian Reitenbach <sebastia@openbsd.org>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c m pcre pthread util z

MULTI_PACKAGES=	-main -gui -snmp

MODULES=	devel/gettext lang/python
MODPY_RUNDEP=	No
USE_GROFF =	Yes

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/swig

WANTLIB-main=	${WANTLIB} crypto gcrypt gpg-error idn ncurses ssl tasn1 \
		e2fs-uuid gnutls>=12 lib/libnet-1.0/net=0 bz2>=10 \
		xml2>=9 ltdl>=4 glib-2.0>=1400 curl>=7
LIB_DEPENDS-main=${LIB_DEPENDS} \
		sysutils/e2fsprogs \
		security/gnutls \
		libnet->=1.0,<1.1:net/libnet/1.0 \
		archivers/bzip2 \
		textproc/libxml \
		devel/libtool,-ltdl \
		devel/glib2 \
		net/curl
RUN_DEPENDS-main=${MODPY_RUN_DEPENDS} \
		devel/p5-Time-TimeDate

WANTLIB-gui=	${MODGETTEXT_WANTLIB} gcrypt gpg-error m tasn1 util xml2 z \
		bz2>=10 gnutls>=12 ltdl>=4 e2fs-uuid
LIB_DEPENDS-gui=${LIB_DEPENDS} \
		archivers/bzip2 \
		security/gnutls \
		devel/libtool,-ltdl \
		sysutils/e2fsprogs
RUN_DEPENDS-gui=${MODPY_RUN_DEPENDS} \
		x11/py-gtk2

WANTLIB-snmp=	${WANTLIB} bz2 crypto e2fs-uuid gcrypt glib-2.0 gnutls \
		gpg-error kvm ltdl perl tasn1 wrap xml2 ccmclient \
		clm hbclient pils plumb netsnmp>=7 netsnmpagent \
		netsnmphelpers netsnmpmibs
LIB_DEPENDS-snmp=${LIB_DEPENDS} \
		${BASE_PKGPATH} \
		net/net-snmp

USE_GMAKE=	Yes
# depends on libltdl
USE_LIBTOOL=	gnu
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
