# $OpenBSD: Makefile,v 1.11 2002/02/21 16:19:54 reinhard Exp $
# Original from: Timo Sirainen <tss@iki.fi>

COMMENT=	"modular IRC client with many features (ipv6,socks,proxy)"

DISTNAME=	irssi-0.8.1
CATEGORIES=	net
NEED_VERSION=	1.504

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

MODULES=		gettext
SEPARATE_BUILD=		Concurrent

CONFIGURE_STYLE=	autoconf

CONFIGURE_ARGS+=	--prefix=${PREFIX} --datadir=${PREFIX}/share/doc \
	--enable-ipv6 --with-bot --with-proxy \
	--with-textui --enable-curses-windows \
	--enable-perl=yes --with-gettext \
	--with-perl-lib=${DESTDIR}${PREFIX}/libdata/perl5/site_perl

USE_LIBTOOL=	Yes

SAMPLE=		default.theme colorless.theme

pre-configure:
	@perl -pi -e 's,doc/irssi,irssi,g' ${WRKSRC}/docs/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/irssi
	(cd ${WRKDIST} && ${INSTALL_DATA} ${SAMPLE} \
		${PREFIX}/share/examples/irssi)

.include <bsd.port.mk>
