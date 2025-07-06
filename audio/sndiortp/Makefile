COMMENT=	play RTP streams or send recorded audio over RTP

GH_ACCOUNT=	ratchov
GH_PROJECT=	sndiortp
GH_TAGNAME=     v1.0.1

CATEGORIES=	audio
MAINTAINER=	Alexandre Ratchov <alex@caoua.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c sndio
NO_TEST=		Yes
MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}" PREFIX="${PREFIX}"

.include <bsd.port.mk>
