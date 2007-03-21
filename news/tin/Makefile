# $OpenBSD: Makefile,v 1.31 2007/03/21 17:28:50 naddy Exp $

COMMENT=	'threaded NNTP and spool based UseNet newsreader'

DISTNAME=	tin-${VERSION}.${PATCHLEVEL}
PKGNAME=	${DISTNAME}
VERSION=	1.8
PATCHLEVEL=	3
CATEGORIES=	news

MASTER_SITES=	ftp://ftp.tin.org/pub/news/clients/tin/v${VERSION}/ \
		ftp://ftp.akk.uni-karlsruhe.de/pub/news/clients/tin/v${VERSION}/ \
		ftp://ftp.cuhk.edu.hk/pub/packages/news/tin/v${VERSION}/ \
		ftp://ftp.sunet.se/pub/news/readers/tin/v${VERSION}/ \
		ftp://ftp.funet.fi/pub/unix/news/tin-unoff/

HOMEPAGE=	http://www.tin.org/

MAINTAINER=	Joachim Schipper <j.schipper@math.uu.nl>

MODULES=	devel/gettext

# This software cannot be redistributed freely due to a few files having
# licenses that prohibit making money from redistribution - see src/nntplib.c,
# vms/vms.c
PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

CONFIGURE_STYLE=	gnu
# --with-x does not affect the build, but let's be safe.
CONFIGURE_ARGS+=	--with-ispell=${LOCALBASE}/bin/ispell \
			--without-metamail \
			--without-pgp \
			--without-pgpk \
			--with-gpg=${LOCALBASE}/bin/gpg \
			--with-screen=ncurses \
			--with-pcre=${LOCALBASE} \
			--with-libdir=${PREFIX}/lib/news \
			--with-spooldir=/var/news \
			--enable-break-long-lines \
			--enable-ipv6 \
			--without-x
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS+=	pcre::devel/pcre \
		utf8::misc/libutf8 \
		idn::devel/libidn

ALL_TARGET=	build

NO_REGRESS=	Yes

FILES=		tin.defaults mime.types

post-install:
	$(INSTALL_DATA_DIR) ${PREFIX}/share/tin
	cd ${WRKSRC}/doc && ${INSTALL_DATA} ${FILES} ${PREFIX}/share/tin

.include <bsd.port.mk>
