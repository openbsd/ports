# $OpenBSD: Makefile,v 1.16 2002/06/22 10:35:21 reinhard Exp $
# Original from: Timo Sirainen <tss@iki.fi>

COMMENT=	"modular IRC client with many features (ipv6,socks,proxy)"

DISTNAME=	irssi-0.8.5
CATEGORIES=	net
NEED_VERSION=	1.531

MASTER_SITES=	${HOMEPAGE}/files/ \
		http://nl.irssi.org/files/ \
		http://fi.irssi.org/files/ \
		http://no.irssi.org/files/ \
		http://de.irssi.org/files/ \
		http://uk.irssi.org/files/ \
		http://pl.irssi.org/files/ \
		http://us.irssi.org/files/

HOMEPAGE=	http://www.irssi.org

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=		glib.1.2,gmodule::devel/glib

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=	--datadir=${PREFIX}/share/doc \
	--enable-ipv6 --with-bot --with-proxy \
	--enable-perl=yes --with-included-gettext \
	--with-perl-lib=${DESTDIR}${PREFIX}/libdata/perl5/site_perl

FLAVORS=	socks
FLAVOR?=

.if ${FLAVOR:L:Msocks}
CONFIGURE_ARGS+=	--with-socks
BUILD_DEPENDS=		socks.1::security/dante
.endif

SAMPLE=		default.theme colorless.theme

WRKDIST=	${WRKDIR}/${DISTNAME:S/a$//}

pre-configure:
	@perl -pi -e 's,doc/irssi,irssi,g' ${WRKSRC}/docs/Makefile.in
	@perl -pi -e 's,lcrypt,lc_r,g' ${WRKSRC}/src/irc/bot/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi
	(cd ${WRKDIST} && ${INSTALL_DATA} ${SAMPLE} \
		${PREFIX}/share/examples/irssi)

.include <bsd.port.mk>
