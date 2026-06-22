COMMENT=	Go TrueType fonts

# version number taken from the upstream git commit log
MODFONT_FAMILY =	go-fonts
MODFONT_VERSION =	2.010
EPOCH =			0

GH_ACCOUNT=	golang
GH_PROJECT=	image
GH_COMMIT=	41969df76e82aeec85fa3821b1e24955ea993001
DISTNAME =	go-fonts-${MODFONT_VERSION}v${EPOCH}

HOMEPAGE=	https://blog.golang.org/go-fonts

# BSD
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

MODULES =	font

WRKSRC =	${WRKDIST}/font/gofont/ttfs

MODFONT_FONTDIR =	${PREFIX}/share/fonts/go
MODFONT_DOCFILES =	README

.include <bsd.port.mk>
