GH_ACCOUNT=	abeluck
GH_PROJECT=	stegdetect
GH_COMMIT=	28a4f074a71c682581314491224f9f41511c82e7

COMMENT=	steganography detection tool (unmaintained)

DISTNAME=	stegdetect-0.6pl20181031
CATEGORIES=	security graphics

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto m

NO_TEST=	Yes

CONFIGURE_STYLE=  autoconf
AUTOCONF_VERSION= 2.69

# disable xsteg
CONFIGURE_ARGS=	--without-libevent

post-extract:
	sed -i s/progname/prog_name/g ${WRKSRC}/steg*.c

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/{stegdetect,stegbreak} ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/*.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
