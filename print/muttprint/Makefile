# $OpenBSD: Makefile,v 1.1.1.1 2016/04/26 14:19:03 feinerer Exp $

COMMENT =	pretty printing of your mails

DISTNAME =	muttprint-0.73

CATEGORIES =	print mail

HOMEPAGE =	http://muttprint.sourceforge.net

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=muttprint/}

RUN_DEPENDS =		converters/p5-Text-Iconv \
			devel/p5-Time-TimeDate \
			graphics/ImageMagick \
			print/psutils \
			print/texlive/base \
			print/texlive/texmf,-full

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

post-patch:
	perl -pi -e 'print "=encoding latin1\n" if $$. == 1; close ARGV if eof;' \
		${WRKSRC}/doc/manpages/{de,en,es,it}/muttprint.pod

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
