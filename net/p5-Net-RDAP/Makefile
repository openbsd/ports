COMMENT=	Perl interface to the Registration Data Access Protocol

MODULES=	cpan
DISTNAME=	Net-RDAP-0.33
CATEGORIES=	net
PKG_ARCH=	*

# BSD
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-DateTime-Format-ISO8601 \
		devel/p5-File-Slurp \
		www/p5-HTTP-Date \
		www/p5-HTTP-Message \
		www/p5-LWP-Protocol-https \
		www/p5-libwww \
		mail/p5-MIME-Types \
		security/p5-Mozilla-CA-Fake \
		net/p5-Net-ASN \
		net/p5-Net-DNS \
		net/p5-Net-IP \
		www/p5-URI \
		textproc/p5-XML-LibXML \
		textproc/p5-Text-vCard

TEST_DEPENDS=	net/p5-LWP-Online

.include <bsd.port.mk>
