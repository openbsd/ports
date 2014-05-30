# $OpenBSD: Makefile,v 1.35 2014/05/30 13:14:08 sthen Exp $

COMMENT=	latency logging and graphing system

DISTNAME=	smokeping-2.6.9
REVISION=	4

CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}pub/

HOMEPAGE=	http://oss.oetiker.ch/smokeping/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Config-Grammar \
		net/fping \
		net/p5-SNMP_Session \
		net/p5-Socket6 \
		net/rrdtool \
		security/p5-Digest-HMAC \
		www/fcgi \
		www/p5-CGI-Session \
		www/p5-libwww
SYSCONFDIR=	${BASESYSCONFDIR}/smokeping

NO_TEST=	Yes
USE_GMAKE=	Yes
PKG_ARCH=	*

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	PERL5LIB=${LOCALBASE}/libdata/perl5/site_perl
CONFIGURE_ARGS=	--with-htdocs-dir=/var/www/htdocs/smokeping
FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/smokeping

PMDIR=		libdata/perl5/site_perl
SUBST_VARS=	PMDIR

MODULES=	perl
MODPERL_ADJ_FILES= bin/smokeinfo bin/smokeping bin/smokeping_cgi bin/tSmoke

pre-configure:
	@cd ${WRKSRC} && ${SUBST_CMD} \
	    etc/config.dist.in bin/smokeping bin/smokeping_cgi bin/tSmoke

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
