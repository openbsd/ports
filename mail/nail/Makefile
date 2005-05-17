# $OpenBSD: Makefile,v 1.13 2005/05/17 23:26:53 naddy Exp $

COMMENT=		"enhanced, MIME capable Berkeley Mail"

DISTNAME=		nail-11.22
CATEGORIES=		mail
HOMEPAGE=		http://nail.sourceforge.net/

MAINTAINER=		William Yodlowsky <bsd@openbsd.rutgers.edu>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=nail/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv

MAKE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \

MAKE_FLAGS+=		SENDMAIL="/usr/sbin/sendmail" \
			LIBS="-liconv"

FAKE_FLAGS+=		DESTDIR="${DESTDIR}" \
			MANDIR="${PREFIX}/man" \
			UCBINSTALL="${INSTALL_PROGRAM}"

NO_REGRESS=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nail
	${INSTALL_DATA} ${WRKSRC}/nail.rc ${PREFIX}/share/examples/nail/

.include <bsd.port.mk>
