COMMENT =	cli browser for keepassx databases

DISTNAME =	kpcli-4.0
CATEGORIES =	security
EXTRACT_SUFX =	.pl
EXTRACT_ONLY =
HOMEPAGE =	https://kpcli.sourceforge.io/

# Perl
PERMIT_PACKAGE =	Yes

SITES =		${SITE_SOURCEFORGE:=kpcli/}

MODULES =	perl
NO_BUILD =	Yes
NO_TEST =	Yes

RUN_DEPENDS =	security/p5-Crypt-Rijndael \
		devel/p5-Term-ShellUI \
		devel/p5-Clone \
		p5-Term-ReadLine-Perl-*|p5-Term-ReadLine-Gnu-*:devel/p5-Term-ReadLine-Gnu \
		devel/p5-Sort-Naturally \
		textproc/p5-Data-Password \
		textproc/p5-File-KDBX \
		textproc/p5-File-KeePass

do-install:
	${INSTALL_SCRIPT} ${FULLDISTDIR}/${DISTNAME}${EXTRACT_SUFX} ${PREFIX}/bin/kpcli

.include <bsd.port.mk>
