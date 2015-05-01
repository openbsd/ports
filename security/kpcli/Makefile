# $OpenBSD: Makefile,v 1.2 2015/05/01 20:29:19 landry Exp $

COMMENT =	cli browser for keepassx databases

DISTNAME =	kpcli-2.8
REVISION =	0
CATEGORIES =	security
EXTRACT_SUFX =	.pl
EXTRACT_ONLY =
HOMEPAGE =	http://kpcli.sourceforge.net/

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=kpcli/}

MODULES =	perl
NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael \
		devel/p5-Term-ReadKey \
		devel/p5-Term-ShellUI \
		p5-Term-ReadLine-Perl-*|p5-Term-ReadLine-Gnu-*:devel/p5-Term-ReadLine-Gnu \
		devel/p5-Sort-Naturally \
		x11/p5-Clipboard \
		sysutils/p5-Capture-Tiny \
		textproc/p5-Data-Password \
		textproc/p5-File-KeePass

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/bin/kpcli

.include <bsd.port.mk>
