COMMENT =	library to add Web Authentication support to server

DISTNAME =	Authen-WebAuthn-0.004

CATEGORIES =	security

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan

HOMEPAGE =	https://github.com/LemonLDAPNG/Authen-WebAuthn

BUILD_DEPENDS =	security/p5-Crypt-URandom
RUN_DEPENDS =	converters/p5-JSON \
		converters/p5-CBOR-XS \
		devel/p5-Hash-Merge-Simple \
		devel/p5-Mouse \
		security/p5-Crypt-OpenSSL-X509 \
		security/p5-CryptX \
		www/p5-URI

PKG_ARCH =	*

.include <bsd.port.mk>
