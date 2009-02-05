# $OpenBSD: Makefile,v 1.1.1.1 2009/02/05 22:05:13 simon Exp $

COMMENT =	formular fu for catalyst

MODULES =	cpan
DISTNAME =	Catalyst-Controller-HTML-FormFu-0.03006
CATEGORIES =	www textproc

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =		::devel/p5-Config-Any \
			::devel/p5-Moose \
			::devel/p5-Task-Weaken \
			::textproc/p5-Regexp-Assemble \
			::www/p5-HTML-FormFu \
			::www/p5-Catalyst-Component-InstancePerContext

REGRESS_DEPENDS =	::devel/p5-Config-General \
			::devel/p5-Test-WWW-Mechanize-Catalyst \
			::textproc/p5-Catalyst-View-TT \
			::www/p5-Catalyst-Action-RenderView \
			::www/p5-Catalyst-Plugin-ConfigLoader

CONFIGURE_ARGS +=	--skipdeps

.include <bsd.port.mk>
