# $OpenBSD: Makefile,v 1.3 2009/11/17 11:47:06 sthen Exp $

COMMENT-main =	flexible network host monitoring, client
COMMENT-server =flexible network host monitoring, server

V =		1.2.6
DISTNAME =	munin_$V
PKGNAME-main =	munin-node-$Vp0
PKGNAME-server =munin-server-$V
CATEGORIES =	net

HOMEPAGE =	http://munin.projects.linpro.no/
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=munin/}

# Mostly GPLv2. VeraMono.ttf has a non-restrictive license (copyright notice
# embedded in the font or xenocara/font/bitstream-vera-ttf/COPYRIGHT.TXT).
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MULTI_PACKAGES=		-main -server

RUN_DEPENDS-main =	::devel/p5-Net-Server
RUN_DEPENDS-server +=	:p5-RRD-*:net/rrdtool,-perl \
			::www/p5-HTML-Template \
			:munin-node-*:net/munin,-main

BUILD_DEPENDS =		::print/htmldoc \
			::converters/html2text

USE_GMAKE =		Yes
ALL_TARGET =		default build-doc build-man
WRKDIST =		${WRKDIR}/${DISTNAME:S/_/-/}
PKG_ARCH =		*

# only used for MODPY_BIN
MODULES =		lang/python
MODPY_RUNDEP =		No
CONFIGURE_STYLE =	none # hack, otherwise python.port.mk overrides target

MAKE_ENV +=		CONFDIR=${SYSCONFDIR}/munin \
			OSTYPE=openbsd \
			PREFIX=${PREFIX} \
			PYTHON=${MODPY_BIN}

FAKE_FLAGS +=		HTMLDIR=${WRKINST}/${PREFIX}/share/examples/munin/www \
			CGIDIR=${WRKINST}/${PREFIX}/share/examples/munin/www \
			DOCDIR=${WRKINST}/${PREFIX}/share/doc/munin \
			CONFDIR=${WRKINST}/${PREFIX}/share/examples/munin

post-extract:
	cp -Rp ${WRKSRC}/node/node.d.freebsd ${WRKSRC}/node/node.d.openbsd
	${SUBST_CMD} -c \
	    ${FILESDIR}/if_pps_ ${WRKSRC}/node/node.d.openbsd/if_pps_.in \
	    ${FILESDIR}/bgpd ${WRKSRC}/node/node.d.openbsd/bgpd.in \
	    ${FILESDIR}/sensors_ ${WRKSRC}/node/node.d.openbsd/sensors_.in \
	    ${FILESDIR}/vmstat ${WRKSRC}/node/node.d.openbsd/vmstat.in
	chmod -R +x ${WRKSRC}/node/node.d.openbsd
	rm ${WRKSRC}/node/node.d.openbsd/memory.in # not yet ported

pre-configure:
	${SUBST_CMD} ${WRKSRC}/node/node.d.openbsd/if_.in \
	    ${WRKSRC}/node/node.d.openbsd/if_errcoll_.in \
	    ${WRKSRC}/node/node.d.openbsd/if_pps_.in \
	    ${WRKSRC}/node/node.d/ps_.in \
	    ${WRKSRC}/node/munin-node.in \
	    ${WRKSRC}/node/munin-node-configure.in
	perl -pi -e 's,/etc/munin/node.d/,${SYSCONFDIR}/munin/plugins/,g;' \
	    -e 's,/usr/share/munin/node/plugins-auto,${TRUEPREFIX}/libexec/munin/plugins/,g;' \
	    ${WRKSRC}/node/node.d/* ${WRKSRC}/node/node.d.openbsd/*

post-install:
	${INSTALL_DATA} ${FILESDIR}/openbsd-packages \
	    ${PREFIX}/share/examples/munin/plugin-conf.d
# remove some plugins which require logtail
	rm ${PREFIX}/libexec/munin/plugins/amavis \
	    ${PREFIX}/libexec/munin/plugins/courier_ \
	    ${PREFIX}/libexec/munin/plugins/mailscanner \
	    ${PREFIX}/libexec/munin/plugins/perdition

.include <bsd.port.mk>
