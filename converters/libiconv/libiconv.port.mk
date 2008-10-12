# $OpenBSD: libiconv.port.mk,v 1.4 2008/10/12 08:52:03 espie Exp $

# The RUN_DEPENDS entry is to ensure libiconv is installed. This is
# necessary so that we have charset.alias installed on static archs.
# Typically installed in PREFIX/lib.
MODLIBICONV_LIB_DEPENDS =	iconv.>=2::converters/libiconv
MODLIBICONV_RUN_DEPENDS =	:libiconv-*:converters/libiconv

LIB_DEPENDS +=			${MODLIBICONV_LIB_DEPENDS}
RUN_DEPENDS +=			${MODLIBICONV_RUN_DEPENDS}
