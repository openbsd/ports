COMMENT=	meta package for all Jitsi Meet components

CATEGORIES=	meta net

VERSION=	1.0
REVISION=	1

MAINTAINER=	Philipp Buehler <pb-openbsd@sysfive.com>, \
		Aisha Tammy <aisha@openbsd.org>

PKGNAME=	jitsi-${VERSION}

# ISC
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	net/jitsi/jicofo \
		net/jitsi/meet \
		net/jitsi/prosody-plugins \
		net/jitsi/srtp \
		net/jitsi/videobridge


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/jitsi/
	${SUBST_DATA} \
		${FILESDIR}/prosody.cfg.lua.sample ${PREFIX}/share/jitsi/prosody.cfg.lua.sample


.include <bsd.port.mk>
