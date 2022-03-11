COMMENT=	generate HTML from files containing POD documentation

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	PodToHTML-0.08
REVISION=	3
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Pod/}

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Pod-Parser \
		www/p5-HTML-Format>=1.23 \
		www/p5-URI>=1.37

.include <bsd.port.mk>
