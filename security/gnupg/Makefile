# $OpenBSD: Makefile,v 1.1.1.1 1999/04/23 03:16:05 brad Exp $

DISTNAME=	gnupg-0.9.5
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.gnupg.org/pub/gcrypt/

MAINTAINER=	markus.friedl@informatik.uni-erlangen.de

SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-nls
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

GNUPGDOCDIR=	${PREFIX}/share/doc/gnupg
GNUPGDOCFILES=	README AUTHORS COPYING THANKS TODO BUGS \
		doc/DETAILS doc/FAQ doc/OpenPGP doc/HACKING

post-install:
	${MKDIR} ${GNUPGDOCDIR}
	@set -e; for f in ${GNUPGDOCFILES}; do \
		${INSTALL_DATA} ${WRKSRC}/$${f} ${GNUPGDOCDIR}/; \
	done

.include <bsd.port.mk>
