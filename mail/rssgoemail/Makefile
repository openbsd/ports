COMMENT =	send RSS/Atom/Gemini feeds to email

MODGO_MODNAME =	gopkg.abiscuola.org/rssgoemail
MODGO_VERSION =	v1.0.2

DISTNAME =	rssgoemail-${MODGO_VERSION}

CATEGORIES =	mail

HOMEPAGE =	https://lab.abiscuola.org/rssgoemail/

MAINTAINER =	Omar Polo <op@openbsd.org>

# ISC
PERMIT_PACKAGE = Yes

WANTLIB += c pthread

MODULES =	lang/go

post-install:
	${INSTALL_MAN} ${WRKSRC}/rssgoemail.1 ${PREFIX}/man/man1

.include "modules.inc"
.include <bsd.port.mk>
