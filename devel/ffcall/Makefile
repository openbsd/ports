# $OpenBSD: Makefile,v 1.8 2005/12/29 13:56:07 bernd Exp $
# $FreeBSD: ports/devel/ffcall/Makefile,v 1.2 2001/08/31 14:20:18 sobomax Exp $
# Original From:                jagapen@home.com

.if ${MACHINE_ARCH:Mm68k}
BROKEN=		"mmap configure test causes system hang"
.endif

COMMENT=	"foreign function call libraries"

DISTNAME=	ffcall-1.9
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=		avcall		0.0 \
			callback	0.0
MODGNU_SHARED_LIBS=	avcall		'' \
			callback	''
CATEGORIES=	devel
MASTER_SITES=	ftp://ftp.ilog.fr/pub/Users/haible/gnu/
HOMEPAGE=	http://www.haible.de/bruno/packages-ffcall.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/autoconf

FAKE_FLAGS=	${DESTDIRNAME}=${WRKINST} \
		htmldir="\$$(datadir)/doc/ffcall/html"

pre-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ffcall/html

.include <bsd.port.mk>
