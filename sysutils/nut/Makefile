# $OpenBSD: Makefile,v 1.22 2007/05/18 12:22:45 henning Exp $

COMMENT-main=		"UPS monitoring program supporting many brands"
COMMENT-cgi=		"CGIs for monitoring Nut-based UPSs"
COMMENT-snmp=		"driver for monitoring UPSs via SNMP"

DISTNAME=		nut-2.0.5
PKGNAME-cgi=		${DISTNAME:S/-/-cgi-/}
PKGNAME-snmp=		${DISTNAME:S/-/-snmp-}
CATEGORIES=		sysutils
HOMEPAGE=		http://www.networkupstools.org/

MAINTAINER=		Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=		http://random.networkupstools.org/source/2.0/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m ssl 

WEB_ROOT=		/var/www
NUT_USER=		_ups
NUT_ID=			529
SUBST_VARS=		WEB_ROOT NUT_USER NUT_ID

CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	--sysconfdir=${SYSCONFDIR}/nut \
			--datadir=${PREFIX}/share/ups \
			--mandir=${PREFIX}/man \
			--with-statepath=/var/db/nut \
			--with-user=${NUT_USER} \
			--with-ssl \
			--enable-strip

ALL_TARGET=		all
INSTALL_TARGET=		install

PSEUDO_FLAVORS=		no_cgi snmp
FLAVOR?=
MULTI_PACKAGES=		-main
.if !${FLAVOR:L:Mno_cgi}
MULTI_PACKAGES+=	-cgi
.endif
.if ${FLAVOR:L:Msnmp}
MULTI_PACKAGES+=	-snmp
.endif

PREFIX-cgi=		${WEB_ROOT}
WANTLIB-cgi=

LIB_DEPENDS-snmp=	netsnmp::net/net-snmp

.if ${MULTI_PACKAGES:M-cgi}
BUILD_DEPENDS+=		:gd->=1.8.3:graphics/gd

CONFIGURE_ARGS+=	--with-cgi \
			--with-cgipath="${WEB_ROOT}/cgi-bin/nut" \
			--with-gd-libs="-L${PREFIX}/lib -lgd -lpng -lz -ljpeg -lm" \
			--with-gd-includes="-I${PREFIX}/include"

ALL_TARGET+=		cgi
INSTALL_TARGET+=	install-cgi
.endif

.if ${MULTI_PACKAGES:M-snmp}
ALL_TARGET+=		snmp
INSTALL_TARGET+=	install-snmp
.endif

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nut/
	cp -R ${WRKSRC}/docs/* ${PREFIX}/share/doc/nut/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nut/
.for file in upsmon.conf upsd.conf upsd.users upssched.conf ups.conf
	${INSTALL_DATA} ${WRKBUILD}/conf/${file} ${PREFIX}/share/examples/nut/
.endfor
# Yes, we install the CGI config files even if we're not building CGI support,
# it will get properly handled by packaging.
	${INSTALL_DATA_DIR} ${WRKINST}${WEB_ROOT}/conf/nut/
.for file in hosts.conf upsset.conf upsstats.html upsstats-single.html
	${INSTALL_DATA} ${WRKBUILD}/conf/${file} ${WRKINST}${WEB_ROOT}/conf/nut/${file}.sample
.endfor

.include <bsd.port.mk>
