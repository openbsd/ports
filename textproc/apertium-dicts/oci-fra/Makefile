# build uses too much memory for 32-bit archs
ONLY_FOR_ARCHS =	${LP64_ARCHS}

# "Document oci-fra.t1x does not validate against /usr/local/share/apertium/transfer.dtd"
BROKEN =	broken with apertium >= 3.9.12

L =	oci-fra
LANG =	Occitan/French
V =	1.0.0
REVISION =	1

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/fra \
			textproc/apertium-dicts/oci \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
