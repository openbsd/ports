# $OpenBSD: Makefile,v 1.45 2015/07/15 23:17:11 sthen Exp $

COMMENT=	latency logging and graphing system

DISTNAME=	smokeping-2.6.11
REVISION=	6

CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}pub/

HOMEPAGE=	http://oss.oetiker.ch/smokeping/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

COMMON_DEPENDS=	devel/p5-Config-Grammar \
		net/rrdtool \
		security/p5-Digest-HMAC \
		www/p5-CGI \
		www/p5-libwww
BUILD_DEPENDS=	${COMMON_DEPENDS}
RUN_DEPENDS=	${COMMON_DEPENDS} \
		net/fping \
		net/p5-SNMP_Session \
		net/p5-Socket6 \
		www/fcgi \
		www/spawn-fcgi
SYSCONFDIR=	${BASESYSCONFDIR}/smokeping

NO_TEST=	Yes
USE_GMAKE=	Yes
PKG_ARCH=	*

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PERL5LIB=${LOCALBASE}/libdata/perl5/site_perl
CONFIGURE_ARGS=	--enable-pkgonly \
		--with-htdocs-dir=/var/www/htdocs/smokeping
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/smokeping

PMDIR=		libdata/perl5/site_perl
SUBST_VARS=	PMDIR

MODULES=	perl
MODPERL_ADJ_FILES= bin/smokeinfo bin/smokeping bin/smokeping_cgi bin/tSmoke

pre-configure:
	@cd ${WRKSRC} && ${SUBST_CMD} \
	    etc/config.dist.in bin/smokeping bin/smokeping_cgi bin/tSmoke
	perl -pi -e s,/usr/local,${LOCALBASE}, ${WRKSRC}/lib/Smokeping/probes/*.pm

post-install:
	-mv ${PREFIX}/share/examples/smokeping/examples/* \
	    ${PREFIX}/share/examples/smokeping; \
	    rmdir ${PREFIX}/share/examples/smokeping/examples
	rm -f ${WRKINST}/var/www/htdocs/smokeping/smokeping.fcgi.dist
	printf "#!/bin/sh\nexec ${LOCALBASE}/bin/smokeping_cgi ${SYSCONFDIR}/config\n" > \
	    ${WRKINST}/var/www/htdocs/smokeping/smokeping.fcgi
	chmod +x ${WRKINST}/var/www/htdocs/smokeping/smokeping.fcgi
	chown -R ${SHAREOWN}:${SHAREGRP} ${WRKINST}/var/www
	${INSTALL_DATA} ${FILESDIR}/httpd.conf \
	    ${PREFIX}/share/examples/smokeping/httpd.conf

.include <bsd.port.mk>
