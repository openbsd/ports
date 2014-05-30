# $OpenBSD: Makefile,v 1.66 2014/05/30 13:20:13 sthen Exp $

COMMENT-main=	host and service monitor
COMMENT-web=	cgis and webpages for nagios

V=		4.0.1
REVISION-main=	0
REVISION-web=	1
DISTNAME=	nagios-$V
PKGNAME-main=	nagios-$V
PKGNAME-web=	nagios-web-$V
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MULTI_PACKAGES=	-main -web

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagios/}

MODULES=	lang/php

BUILD_DEPENDS=	graphics/gd
LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS-main= net/nagios/plugins

LOCALSTATEDIR=	${BASELOCALSTATEDIR}/nagios

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--datadir=${PREFIX-web}/nagios \
		--libexecdir=${PREFIX}/libexec/nagios \
		--sbindir=${PREFIX-web}/cgi-bin/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-checkresult-dir=/var/spool/nagios \
		--with-command-group=www \
		--with-gd-inc=${LOCALBASE}/include \
		--with-gd-lib=${LOCALBASE}/lib \
		--with-htmurl=/nagios \
		--with-httpd-conf=${PREFIX-web}/conf/modules.sample \
		--with-lockfile=/var/run/nagios/nagios.pid \
		--with-log-dir=/var/log/nagios \
		--with-nagios-group=_nagios \
		--with-nagios-user=_nagios
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"


FLAVORS=	chroot
FLAVOR?=

.if ${FLAVOR:Mchroot}
CHROOT=		${VARBASE}/www
PATCH_LIST=	patch-* chroot-*
.else
CHROOT=
.endif

WANTLIB=	c m

PREFIX-web=	${VARBASE}/www
# overwrite RUN_DEPENDS in order to only depend on the base package
.if ${FLAVOR:Mchroot}
WANTLIB-web=
LIB_DEPENDS-web=
RUN_DEPENDS-web= nagios-${V}-chroot:net/nagios/nagios,chroot \
		 lang/php/${MODPHP_VERSION},-gd
.else
WANTLIB-web=	${WANTLIB} fontconfig freetype gd jpeg png pthread z
LIB_DEPENDS-web= graphics/gd
RUN_DEPENDS-web= nagios-${V}-!chroot:net/nagios/nagios \
		 lang/php/${MODPHP_VERSION},-gd
.endif

WANTLIB-main=	${WANTLIB} ltdl>=4

NO_TEST=	Yes

CFLAGS+=	-D_DIRENT_HAVE_D_TYPE

EXDIR=		${PREFIX}/share/examples/nagios
SAMPLEDIR=	${WRKSRC}/sample-config
MODSAMPLE=	${WRKINST}${PREFIX-web}/conf/modules.sample

INSTALL_TARGET=	install-unstripped
SUBST_VARS=	CHROOT

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}/objects ${MODSAMPLE}
	@perl -i -pe "s,%%SYSCONFDIR%%,${SYSCONFDIR}," ${SAMPLEDIR}/httpd.conf
	${INSTALL_DATA} ${SAMPLEDIR}/httpd.conf ${MODSAMPLE}/nagios.conf.dist
	${INSTALL_DATA} ${SAMPLEDIR}/{cgi,mrtg,nagios,resource}.cfg ${EXDIR}
	${INSTALL_DATA} ${SAMPLEDIR}/template-object/*.cfg ${EXDIR}/objects

.include <bsd.port.mk>
