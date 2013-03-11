# $OpenBSD: Makefile,v 1.11 2013/03/11 10:50:21 espie Exp $

COMMENT=	subversion repository web frontend

MODULES=	cpan
DISTNAME=	SVN-Web-0.48
REVISION=	2
CATEGORIES=	devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	NIKC

RUN_DEPENDS=	devel/subversion,-perl \
		devel/p5-Cache-Cache \
		devel/p5-Exception-Class \
		devel/p5-Locale-Maketext-Lexicon \
		devel/p5-Test-WWW-Mechanize \
		devel/p5-Time-TimeDate \
		devel/p5-YAML \
		textproc/p5-Template-Plugin-Number-Format \
		textproc/p5-Text-Diff-HTML \
		textproc/p5-XML-RSS-Parser
# tests broken on sparc64, server doesn't really work either
#		www/p5-HTTP-Server-Simple
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_ENV= LD_PRELOAD=libpthread.so # XXX remove when perl is -lpthread
MAKE_ENV=      LD_PRELOAD=libpthread.so # XXX remove when perl is -lpthread

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
