# $OpenBSD: Makefile,v 1.9 2005/11/20 21:20:25 sturm Exp $

COMMENT=	"host and service monitor"
COMMENT-web=	"cgis and webpages for nagios"

V=		2.0b5
DISTNAME=	nagios-${V}
PKGNAME-web=	nagios-web-${V}
CATEGORIES=	net

HOMEPAGE=	http://www.nagios.org/

MAINTAINER=	Nikolay Sturm <sturm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=	-web
SUBPACKAGE?=

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nagios/}

BUILD_DEPENDS=	:gd-*:graphics/gd
LIB_DEPENDS=	ltdl.4::devel/libtool,-ltdl
RUN_DEPENDS=	:nagios-plugins-*:net/nagios/plugins

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--datadir=/var/www/nagios \
		--libexecdir=${PREFIX}/libexec/nagios \
		--localstatedir=/var/nagios \
		--sbindir=/var/www/cgi-bin/nagios \
		--with-cgiurl=/cgi-bin/nagios \
		--with-command-group=www \
		--with-gd-inc=${LOCALBASE}/include \
		--with-gd-lib=${LOCALBASE}/lib \
		--with-lockfile=/var/run/nagios/nagios.pid \
		--with-nagios-group=_nagios \
		--with-nagios-user=_nagios
CONFIGURE_ENV+=	LDFLAGS="-L${X11BASE}/lib"

FLAVORS=	chroot
FLAVOR?=

.if ${FLAVOR:L:Mchroot}
CHROOT=		/var/www
PATCH_LIST=	patch-* chroot-*
.else
CHROOT=
.endif

.if defined(PACKAGING)
WANTLIB=	c m
.  if ${SUBPACKAGE} == "-web"
PREFIX=		/var/www
# overwrite RUN_DEPENDS in order to only depend on the base package
.    if ${FLAVOR:L:Mchroot}
WANTLIB=
LIB_DEPENDS=
RUN_DEPENDS=	nagios:nagios-${V}-chroot:net/nagios/nagios,chroot
.    else
WANTLIB+=	fontconfig freetype jpeg png z
LIB_DEPENDS=	gd::graphics/gd
RUN_DEPENDS=	nagios:nagios-${V}-!chroot:net/nagios/nagios
.    endif
.  else
WANTLIB+=	pthread
.  endif
.endif

NO_REGRESS=	Yes

CONFIG_FILES0=	cgi.cfg httpd.conf nagios.cfg resource.cfg
CONFIG_FILES1=	bigger.cfg checkcommands.cfg minimal.cfg misccommands.cfg
EXDIR=		${PREFIX}/share/examples/nagios

SUBST_VARS=	CHROOT

post-install:
	${INSTALL_DATA_DIR} ${EXDIR}
	@perl -i -pe "s,%%SYSCONFDIR%%,${SYSCONFDIR}," \
		${WRKSRC}/sample-config/httpd.conf
.for f in ${CONFIG_FILES0}
	${INSTALL_DATA} ${WRKSRC}/sample-config/${f} ${EXDIR}
.endfor
.for f in ${CONFIG_FILES1}
	${INSTALL_DATA} ${WRKSRC}/sample-config/template-object/${f} ${EXDIR}
.endfor

.include <bsd.port.mk>
