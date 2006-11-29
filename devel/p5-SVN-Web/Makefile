# $OpenBSD: Makefile,v 1.3 2006/11/29 08:23:30 espie Exp $

COMMENT=	"subversion repository web frontend"

MODULES=	cpan
DISTNAME=	SVN-Web-0.48
CATEGORIES=	devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=	NIKC

RUN_DEPENDS=	::devel/subversion,-perl \
		::devel/p5-Cache-Cache \
		::devel/p5-Exception-Class \
		::devel/p5-Locale-Maketext-Lexicon \
		::devel/p5-Locale-Maketext-Simple \
		::devel/p5-Test-WWW-Mechanize \
		::devel/p5-Time-TimeDate \
		::devel/p5-YAML \
		::textproc/p5-Template-Plugin-Number-Format \
		::textproc/p5-Text-Diff-HTML \
		::textproc/p5-XML-RSS-Parser
# tests broken on sparc64, server doesn't really work either
#		::www/p5-HTTP-Server-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
